class ExpensesController < ApplicationController
  def index
     @expenses = Expense.order("date DESC")

     if params[:concept].present?
      @expenses = @expenses.where("concept LIKE ?", "%#{params[:concept]}%")
    end

     if params[:category_id].present?

     	@expenses=Expense.where("category_id = ?", params[:category_id])

     end
  end
end
