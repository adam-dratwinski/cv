Cv::Application.routes.draw do
  scope "(:locale)", locale: /pl|en/ do
    match "cv" => "application#cv"
  end
  root to: "application#cv"
end
