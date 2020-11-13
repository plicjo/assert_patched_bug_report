defmodule AssertPatchedBugReportWeb.PackageLiveTest do
  use AssertPatchedBugReportWeb.ConnCase

  import Phoenix.LiveViewTest

  describe "Bug Report" do
    test "when no params - patch url to include foo param", %{conn: conn} do
      conn = get(conn, Routes.bug_report_path(conn, :index))
      assert redirected_to(conn) == "/bug_report?foo=bar"
    end
  end
end
