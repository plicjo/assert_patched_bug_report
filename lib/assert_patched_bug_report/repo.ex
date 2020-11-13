defmodule AssertPatchedBugReport.Repo do
  use Ecto.Repo,
    otp_app: :assert_patched_bug_report,
    adapter: Ecto.Adapters.Postgres
end
