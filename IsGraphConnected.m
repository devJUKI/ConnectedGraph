function [bool] = IsGraphConnected(edges, v)
    if length(v) == 1
        bool = true;
        return;
    end

    % Atliekame paieska y ploti

    bfsStack = v(1);
    vertices = v(1);

    [edgeCount, ~] = size(edges);

    % Surandame virsunes kurios jungiasi su pasirinkta virsune
    % Patikriname ar surastos virsunes nebuvo aplankytos
    % Dedame surastas virsunes y steka ir aplankytu virsuniu masyva
    % Naikiname pasirinkta virsune is steko

    while ~isempty(bfsStack)
        selectedVertex = bfsStack(1);
        bfsStack(1) = [];

        for i = 1:edgeCount
            if edges(i, 1) == selectedVertex
                if (~IsVertexInArray(edges(i, 2), vertices))
                    bfsStack(length(bfsStack) + 1) = edges(i, 2);
                    vertices(length(vertices) + 1) = edges(i, 2);
                end
            end

            if edges(i, 2) == selectedVertex
                if (~IsVertexInArray(edges(i, 1), vertices))
                    bfsStack(length(bfsStack) + 1) = edges(i, 1);
                    vertices(length(vertices) + 1) = edges(i, 1);
                end
            end
        end
    end

    bool = length(vertices) >= length(v);
end