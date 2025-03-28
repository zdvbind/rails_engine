module BlogEngine
  class Engine < ::Rails::Engine
    isolate_namespace BlogEngine

    initializer 'blog-engine.importmap', before: 'importmap' do |app|
      # NOTE: this will add pins from this engine to the main app
      # https://github.com/rails/importmap-rails#composing-import-maps
      app.config.importmap.paths += [Engine.root.join('config/importmap.rb')]
    end

    # NOTE: add engine manifest to precompile assets in production, if you don't have this yet.
    initializer "blog-engine.assets" do |app|
      # my_engine/app/javascript needs to be in the asset path
      app.config.assets.paths << root.join("app/javascript")
      # manifest has to be precompiled
      app.config.assets.precompile += %w[blog_engine_manifest.js]
    end
  end
end
