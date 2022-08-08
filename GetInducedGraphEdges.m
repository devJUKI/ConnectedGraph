%#ok<*AGROW> 
function [edges] = GetInducedGraphEdges(U, v)
edges = [];
for i = 1:height(U)
    if IsVertexInArray(U(i, 1), v) == true && IsVertexInArray(U(i, 2), v) == true
        m = height(edges);
        edges(m + 1, :) = U(i, :);
    end
end