function [bool] = IsVertexInArray(vertex, array)
bool = false;
n = length(array);
for i = 1:n
    if vertex == array(i)
        bool = true;
        return;
    end
end