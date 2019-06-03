# require 'spec_helper'
# require 'cfn-model'
# require 'cfn-nag-rules-core/workspaces/workspace_encryption_rule'
#
# describe CfnNag::Workspaces::WorkspaceEncryptionRule do
#   context 'Workspace without encryption' do
#     it 'returns offending logical resource id' do
#       cfn_model = CfnParser.new.parse read_test_template(
#         'workspaces/workspace_with_no_encryption.json'
#       )
#
#       actual_logical_resource_ids = CfnNag::Workspaces::WorkspaceEncryptionRule.new.audit_impl cfn_model
#       expected_logical_resource_ids = %w[workspace1]
#
#       expect(actual_logical_resource_ids).to eq expected_logical_resource_ids
#     end
#   end
#
#   context 'Workspace with encryption' do
#     it 'returns empty list' do
#       cfn_model = CfnParser.new.parse read_test_template('workspaces/workspace_with_encryption.json')
#
#       actual_logical_resource_ids = CfnNag::Workspaces::WorkspaceEncryptionRule.new.audit_impl cfn_model
#       expected_logical_resource_ids = []
#
#       expect(actual_logical_resource_ids).to eq expected_logical_resource_ids
#     end
#   end
#
#   context 'Workspace with encryption set to false string' do
#     it 'returns offending logical resource id' do
#       cfn_model = CfnParser.new.parse read_test_template('workspaces/workspace_with_encryption_false.json')
#
#       actual_logical_resource_ids = CfnNag::Workspaces::WorkspaceEncryptionRule.new.audit_impl cfn_model
#       expected_logical_resource_ids = %w[workspace1]
#
#       expect(actual_logical_resource_ids).to eq expected_logical_resource_ids
#     end
#   end
#
#   context 'Workspace with encryption set to false boolean' do
#     it 'returns offending logical resource id' do
#       cfn_model = CfnParser.new.parse read_test_template('workspaces/workspace_with_encryption_false_boolean.json')
#
#       actual_logical_resource_ids = CfnNag::Workspaces::WorkspaceEncryptionRule.new.audit_impl cfn_model
#       expected_logical_resource_ids = %w[workspace1]
#
#       expect(actual_logical_resource_ids).to eq expected_logical_resource_ids
#     end
#   end
# end
