defmodule AssertPatchedBugReportWeb.PackageLiveTest do
  use AssertPatchedBugReportWeb.ConnCase

  import Phoenix.LiveViewTest

  describe "Bug Report" do
    test "when no params - patch url to include foo param", %{conn: conn} do
      {:ok, bug_report_live, _html} = live(conn, Routes.bug_report_path(conn, :index))
      assert_patch bug_report_live, "/bug_report?foo=bar"
    end
  end
end
