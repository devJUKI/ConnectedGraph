function [] = HighlightGraph(h, vertices, edges)
    highlight(h, vertices, 'NodeColor','r');

    for i = 1:height(edges)
        highlight(h, edges(i, :), 'EdgeColor', 'r', 'LineWidth', 1.5);
    end
end