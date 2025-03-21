module BlogEngine
  class Engine < ::Rails::Engine
    isolate_namespace BlogEngine
    # NOTE: add engine manifest to precompile assets in production, if you don't have this yet.
    initializer "blog-engine.assets" do |app|
      app.config.assets.precompile += %w[blog_engine_manifest]
    end
  end
end
