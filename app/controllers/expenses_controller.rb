class ExpensesController < ApplicationController
  def index
    @data = Expense.page(params[:page]).per(50)
  end

  def import_expenses
    begin      
      @data = Expense.import_data
      redirect_to expenses_index_path,notice: "Imported successfully......."
    rescue      
      redirect_to expenses_index_path,notice: "Unsuccessful.."
    end    
  end
end
