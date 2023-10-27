unit uRepositories;

interface

uses
  Aurelius.Drivers.Interfaces, System.Generics.Collections,
  Aurelius.Drivers.dbGo, uDM, Aurelius.Engine.ObjectManager,
  System.SysUtils, System.Classes, Aurelius.Sql.MSSQL, Aurelius.Schema.MSSQL,
  Aurelius.Comp.Connection, Data.DB, Data.Win.ADODB;

type
  TGenericRepository<TEntity: class> = class
  private
    fObjectManager: TObjectManager;

  public
    constructor Create(ObjectManager: TObjectManager);
    procedure Add(Entity: TEntity);
    function GetById(const aID: integer; var entity: TEntity): TEntity;
    procedure Update(Entity: TEntity);
    procedure Delete(Entity: TEntity);
    function GetAll: TObjectList<TEntity>;
  end;

implementation

constructor TGenericRepository<TEntity>.Create(ObjectManager: TObjectManager);
begin
  fObjectManager := ObjectManager;
end;

procedure TGenericRepository<TEntity>.Add(Entity: TEntity);
begin
  if Assigned(Entity) then
  begin
    fObjectManager.Save(Entity);
    fObjectManager.Flush;
  end;
end;

function TGenericRepository<TEntity>.GetById(const aID: integer; var entity: TEntity): TEntity;
begin
  entity := fObjectManager.Find<TEntity>(aID);
end;

procedure TGenericRepository<TEntity>.Update(Entity: TEntity);
begin
  if Assigned(Entity) then
  begin
    fObjectManager.SaveOrUpdate(Entity);
    fObjectManager.Flush;
  end;
end;

procedure TGenericRepository<TEntity>.Delete(Entity: TEntity);
begin
  if Assigned(Entity) then
  begin
    fObjectManager.Remove(Entity);
    fObjectManager.Flush;
  end;
end;

function TGenericRepository<TEntity>.GetAll: TObjectList<TEntity>;
begin
  Result := fObjectManager.Find<TEntity>.List;
end;

end.
