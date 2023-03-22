class EmployeesController < ApplicationController
	def index
		@employees = Employee.all
	end
	def new
		@employee = Employee.new
	end
	def create
		@employee = Employee.new(employee_params)

		if @employee.save
			redirect_to employees_path, notice: "employee is created"
		else
			render :new
		end
	end
	def edit
		@employee = Employee.find(params[:id])
		
	end
	def update
		@employee = Employee.find(params[:id])
		if @employee.update(employee_params)
			redirect_to employees_path, notice: "employee status is change"
		else
			render :edit
		end
	end
	def show
		@employee = Employee.find(params[:id])
	end
	def destroy
		@employee = Employee.find(params[:id])
		if @employee.destroy
			redirect_to employees_path, notice: "employee is delete"
		end
	end

	private
	def employee_params
		params.require(:employee).permit(:name, :contact, :address)
	end
end
