#anexando...
require_relative 'algoritmos-de-calculo'
#criador da equação da reta
class EquationCreator
    def create(coef)
        #extraindo coeficientes
        a= coef[:a]
        b= coef[:b]
        c= coef[:c]
        #variavel formadora da equacao
        eq=nil
        #preparando a equação
        a ==0 ? (raise "o coeficiente 'a' não pode ser zero. reta sem solução!") : a
        a == 1 ? (a = " ") : (a == -1 ? a= "-": a) 
        b > 0 ? (b="+#{b}") : (b == -1 ? b= "-": b)  
        c > 0 ? (c ="+#{c}") : c
        b==0 ? (eq="#{a}x#{c}=0") : (c==0 ? (eq= "#{a}x#{b}y=0") : (eq= "#{a}x#{b}y#{c}=0"))    
        return eq
    end
end
#identificador de padrao
class IdentifierPattern < EquationCreator
    def identify(point)
        #ternaria DetLinear
        point != nil && point.size==4 ? dl=create(DetLinear.calcDet(point)) : nil
            return dl
    end
end
