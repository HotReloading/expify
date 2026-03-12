import 'package:go_router/go_router.dart';
import '../../features/expense_management/screens/add_expenses.dart';
import '../../features/on_boarding/screens/on_boarding.dart';

GoRouter appRouter = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => AddExpenses())],
);
