class Api::ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render "index.json.jb"
  end

  def show
    id = params["id"]
    @actor = Actor.find_by(id: params["id"])
    render "actor.json.jb"
  end

  def create
    @actor = Actor.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      age: params["age"],
      gender: params["gender"],
    )
    @actor.save
    if @actor.save
      render "show.json.jb"
    else
      render json: { errors: @actor.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    id = params["id"]
    @actor = Actor.find_by(id: params["id"])
    @actor.first_name = params["first_name"] || @actor.first_name
    @actor.last_name = params["last_name"] || @actor.last_name
    @actor.known_for = params["known_for"] || @actor.known_for
    @actor.age = params["age"] || @actor.age
    @actor.gender = params["gender"] || @actor.gender
    @actor.save

    if @actor.save
      render "show.json.jb"
    else
      render json: { errors: @actor.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    id = params["id"]
    @actor = Actor.find(id)

    @actor.destroy
    render json: {
      message: "Actor deleted successfully",
    }
  end
end
