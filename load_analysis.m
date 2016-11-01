function [gene_expression, time_points, list_of_DRGs, list_of_gene_clusters, gene_expression_by_cluster, list_of_cluster_means, coefficients, adjacency_matrix_of_gene_regulatory_network, network_graph, graph_statistics, node_statistics, subject_name, gene_ID_type, indices_of_DRGs, number_of_statistically_significant_DRGs, list_of_genes, list_of_genes_sorted_by_F_value, gene_expression_sorted_by_F_value] = load_analysis(GEO_number, condition)

  
  path_to_results_file = ['Results/' GEO_number '/' condition '/' 'Results.mat'];
  
  if(~exist(path_to_results_file, 'file'))
    msgID = 'MATLAB:rmpath:DirNotFound1';
    msg = ['Unable to retrieve analysis results for condition ' condition ' associated to GEO series ' GEO_number '.'];
    baseException = MException(msgID,msg);    
    throw(baseException);    
  else
    load(path_to_results_file, 'gene_expression', 'time_points', 'list_of_DRGs', 'list_of_gene_clusters', 'gene_expression_by_cluster', 'list_of_cluster_means', 'coefficients', 'adjacency_matrix_of_gene_regulatory_network', 'network_graph', 'graph_statistics', 'node_statistics', 'subject_name', 'gene_ID_type', 'indices_of_DRGs', 'number_of_statistically_significant_DRGs', 'list_of_genes', 'list_of_genes_sorted_by_F_value', 'gene_expression_sorted_by_F_value');
  end
end