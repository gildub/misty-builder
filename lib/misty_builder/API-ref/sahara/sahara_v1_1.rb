module Misty::Openstack::SaharaV1_1
  def v1_1
{"/v1.1/{project_id}/cluster-templates/{cluster_template_id}"=>
  {:GET=>[:show_cluster_template_details],
   :PUT=>[:update_cluster_templates],
   :DELETE=>[:delete_cluster_template]},
 "/v1.1/{project_id}/cluster-templates"=>
  {:GET=>[:list_cluster_templates], :POST=>[:create_cluster_templates]},
 "/v1.1/{project_id}/cluster-templates?limit=2"=>{:GET=>[:id11]},
 "/v1.1/{project_id}/clusters"=>
  {:GET=>[:list_available_clusters, :id19], :POST=>[:create_cluster]},
 "/v1.1/{project_id}/clusters/multiple"=>{:POST=>[:create_multiple_clusters]},
 "/v1.1/{project_id}/clusters/{cluster_id}"=>
  {:GET=>[:show_details_of_a_cluster, :show_progress, :id55],
   :DELETE=>[:delete_a_cluster],
   :PUT=>[:scale_cluster],
   :PATCH=>[:update_cluster]},
 "/v1.1/{project_id}/data-sources/{data_source_id}"=>
  {:GET=>[:show_data_source_details],
   :DELETE=>[:delete_data_source],
   :PUT=>[:update_data_source]},
 "/v1.1/{project_id}/data-sources"=>
  {:GET=>[:list_data_sources], :POST=>[:create_data_source]},
 "/v1.1/{project_id}/data-sourses?sort_by=-name"=>{:GET=>[:id49]},
 "/v1.1/{project_id}/images/{image_id}/tag"=>{:POST=>[:add_tags_to_image]},
 "/v1.1/{project_id}/images/{image_id}"=>
  {:GET=>[:show_image_details],
   :POST=>[:register_image],
   :DELETE=>[:unregister_image]},
 "/v1.1/{project_id}/images/{image_id}/untag"=>
  {:POST=>[:remove_tags_from_image]},
 "/v1.1/{project_id}/images"=>{:GET=>[:list_images]},
 "/v1.1/{project_id}/job-binaries"=>
  {:GET=>[:list_job_binaries], :POST=>[:create_job_binary]},
 "/v1.1/{project_id}/job-binaries?sort_by=created_at"=>{:GET=>[:id82]},
 "/v1.1/{project_id}/job-binaries/{job_binary_id}"=>
  {:GET=>[:show_job_binary_details],
   :DELETE=>[:delete_job_binary],
   :PUT=>[:update_job_binary]},
 "/v1.1/{project_id}/job-binaries/{job_binary_id}/data"=>
  {:GET=>[:show_job_binary_data]},
 "/v1.1/{project_id}/job-executions/{job_execution_id}/refresh-status"=>
  {:GET=>[:refresh_job_execution_status]},
 "/v1.1/{project_id}/job-executions"=>{:GET=>[:list_job_executions]},
 ""=>{:"/v1.1/{project_id}/job-executions"=>[:id112]},
 "/v1.1/{project_id}/job-executions/{job_execution_id}"=>
  {:GET=>[:show_job_execution_details],
   :DELETE=>[:delete_job_execution],
   :PATCH=>[:update_job_execution]},
 "/v1.1/{project_id}/job-executions/{job_execution_id}/cancel"=>
  {:GET=>[:cancel_job_execution]},
 "/v1.1/{project_id}/job-types"=>{:GET=>[:list_job_types]},
 "/v1.1/{project_id}/job-binary-internals/{name}"=>
  {:PUT=>[:create_job_binary_internal]},
 "/v1.1/{project_id}/job-binary-internals/{job_binary_internals_id}/data"=>
  {:GET=>[:show_job_binary_internal_data]},
 "/v1.1/{project_id}/job-binary-internals/{job_binary_internals_id}"=>
  {:GET=>[:show_job_binary_internal_details],
   :DELETE=>[:delete_job_binary_internal],
   :PATCH=>[:update_job_binary_internal]},
 "/v1.1/{project_id}/job-binary-internals"=>
  {:GET=>[:list_job_binary_internals, :id157]},
 "/v1.1/{project_id}/jobs/{job_id}/execute"=>{:POST=>[:run_job]},
 "/v1.1/{project_id}/jobs"=>{:GET=>[:list_jobs], :POST=>[:create_job]},
 "/v1.1/{project_id}/jobs/{job_id}"=>
  {:GET=>[:show_job_details],
   :DELETE=>[:remove_job],
   :PATCH=>[:update_job_object]},
 "/v1.1/{project_id}/node-group-templates"=>
  {:GET=>[:list_node_group_templates], :POST=>[:create_node_group_template]},
 "/v1.1/{project_id}/node-group-templates?limit=2&marker=38b4e146-1d39-4822-bad2-fef1bf304a52&sort_by=name"=>
  {:GET=>[:id185]},
 "/v1.1/{project_id}/node-group-templates/{node_group_template_id}"=>
  {:GET=>[:show_node_group_template_details],
   :DELETE=>[:delete_node_group_template],
   :PUT=>[:update_node_group_template]},
 "/v1.1/{project_id}/plugins/{plugin_name}"=>
  {:GET=>[:show_plugin_details], :PATCH=>[:update_plugin_details]},
 "/v1.1/{project_id}/plugins"=>{:GET=>[:list_plugins]},
 "/v1.1/{project_id}/plugins/{plugin_name}/{version}"=>
  {:GET=>[:show_plugin_version_details]}}
  end
end
