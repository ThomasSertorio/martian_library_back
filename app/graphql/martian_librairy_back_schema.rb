class MartianLibrairyBackSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  # Batching to avoid N+1 queries
  use GraphQL::Batch

  # Opt in to the new runtime (default in future graphql-ruby versions)
  use GraphQL::Execution::Interpreter
  use GraphQL::Analysis::AST

  # Add built-in connections for pagination
  use GraphQL::Pagination::Connections
end
