part of '../expense_report.dart';

class ExpenseReport {
  void printReport(
    List<Expense> expenses, {
    required DateTime date,
  }) {
    _writeHeader(date);

    _writeExpenses(expenses);

    _writeTotalsFor(expenses);
  }

  void _writeHeader(DateTime date) {
    log('Expense Report: $date');
  }

  void _writeExpenses(List<Expense> expenses) {
    expenses.forEach(_writeExpenseLineFor);
  }

  void _writeTotalsFor(List<Expense> expenses) {
    log('Meal Expenses: ${_calculateMealExpenses(expenses)}');
    log('Total Expenses: ${expenses.fold(0, (total, expense) => total + expense.amount)}');
  }

  int _calculateMealExpenses(List<Expense> expenses) {
    final meals = expenses.where((expense) => expense.service.isMeal);
    return meals.fold(0, (total, expense) => total + expense.amount);
  }

  void _writeExpenseLineFor(Expense expense) => log(
        '${expense.type.name}\t${expense.amount}\t${expense.service.isOverLimit ? 'X' : ' '}',
      );

  void log(Object? object) => ApprovalLogger.log(object.toString());
}
