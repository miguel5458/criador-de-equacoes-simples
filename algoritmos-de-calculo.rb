#classe da determinante
class DetLinear
    #metodo de calculo de determinante simples
    def self.calcDet(point)
        #calculando os coeficientes
        a,b,c= point[:y1]-point[:y2],point[:x2]-point[:x1],(point[:x1]*point[:y2])-(point[:x2]*point[:y1])
        return {a: a, b: b, c: c}
    end
end




    