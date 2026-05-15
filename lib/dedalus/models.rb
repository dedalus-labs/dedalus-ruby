# frozen_string_literal: true

module Dedalus
  [Dedalus::Internal::Type::BaseModel, *Dedalus::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Dedalus::Internal::AnyHash) } }
  end

  Dedalus::Internal::Util.walk_namespaces(Dedalus::Models).each do |mod|
    case mod
    in Dedalus::Internal::Type::Enum | Dedalus::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Dedalus::Internal::Util.walk_namespaces(Dedalus::Models)
                         .lazy
                         .grep(Dedalus::Internal::Type::Union)
                         .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  CreateParams = Dedalus::Models::CreateParams

  LifecycleStatus = Dedalus::Models::LifecycleStatus

  Machine = Dedalus::Models::Machine

  MachineComputeUsage = Dedalus::Models::MachineComputeUsage

  MachineComputeUsageRow = Dedalus::Models::MachineComputeUsageRow

  MachineCreateParams = Dedalus::Models::MachineCreateParams

  MachineDeleteParams = Dedalus::Models::MachineDeleteParams

  MachineList = Dedalus::Models::MachineList

  MachineListItem = Dedalus::Models::MachineListItem

  MachineListParams = Dedalus::Models::MachineListParams

  MachineRetrieveParams = Dedalus::Models::MachineRetrieveParams

  Machines = Dedalus::Models::Machines

  MachineSleepParams = Dedalus::Models::MachineSleepParams

  MachineStorageUsage = Dedalus::Models::MachineStorageUsage

  MachineStorageUsageRow = Dedalus::Models::MachineStorageUsageRow

  MachineUpdateParams = Dedalus::Models::MachineUpdateParams

  MachineWakeParams = Dedalus::Models::MachineWakeParams

  MachineWatchParams = Dedalus::Models::MachineWatchParams

  OrgUsage = Dedalus::Models::OrgUsage

  UpdateParams = Dedalus::Models::UpdateParams

  UsageMachineComputeParams = Dedalus::Models::UsageMachineComputeParams

  UsageMachineStorageParams = Dedalus::Models::UsageMachineStorageParams

  UsageRetrieveParams = Dedalus::Models::UsageRetrieveParams
end
