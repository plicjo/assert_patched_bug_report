defmodule AssertPatchedBugReportWeb.BugReportLive do
  use AssertPatchedBugReportWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(params, _url, socket) when params == %{} do
    {:noreply, push_patch(socket, to: Routes.bug_report_path(socket, :index, %{foo: "bar"}))}
  end

  def handle_params(params, _url, socket) do
    {:noreply, socket |> assign(:page_title, "Bug Report")}
  end

  def render(assigns) do
    ~L"""
    Hello!
    """
  end
end
