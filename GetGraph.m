function [G] = GetGraph(vertexCount, edges)
    G = graph();
    G = addnode(G, vertexCount);

    if isempty(edges) == false
        edgeTable = table(edges, 'VariableNames', {'EndNodes'});
        G = addedge(G, edgeTable);
    end
end