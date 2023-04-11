part of 'portfolio_cubit.dart';


abstract class PortfolioState extends Equatable{
  final bool isLoading;
  final String errorMessage;
const PortfolioState(this.isLoading, this.errorMessage);
}

class PortfolioInitial extends PortfolioState {
  const PortfolioInitial(super.isLoading, super.errorMessage);

   @override
    List<Object?> get props => [isLoading,errorMessage];
}


class PortfolioLoading extends PortfolioState {
  const PortfolioLoading(super.isLoading, super.errorMessage);

   @override
    List<Object?> get props => [isLoading,errorMessage];
}




class PortfolioLoaded extends PortfolioState {
const PortfolioLoaded(super.isLoading, super.errorMessage);

 @override
  List<Object?> get props => [isLoading,errorMessage];
}



class PortfolioError extends PortfolioState {
const PortfolioError(super.isLoading, super.errorMessage);

@override
List<Object?> get props => [isLoading,errorMessage];
}


