class Calculator
    def calculate(num1, num2, operator)
        if operator == '+'
            num1.to_i + num2.to_i
        elsif operator == '-'
            num1.to_i - num2.to_i
        elsif operator == '*'
            num1.to_i * num2.to_i
        elsif operator == '/'
            num1.to_i / num2.to_i
        elsif operator == 'exp'
            num1.to_i ** num2.to_i
        end
    end
end