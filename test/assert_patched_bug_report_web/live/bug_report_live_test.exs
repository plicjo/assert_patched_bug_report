defmodule AssertPatchedBugReportWeb.PackageLiveTest do
  use AssertPatchedBugReportWeb.ConnCase

  import Phoenix.LiveViewTest

  describe "Bug Report" do
    test "when no params - patch url to include foo param", %{conn: conn} do
      {:error, {:live_redirect, %{to: location}}} = live(conn, Routes.bug_report_path(conn, :index))
      assert location == "/bug_report?foo=bar"
    end
  end
end
