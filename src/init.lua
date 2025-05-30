--!strict

local IConversation = require(script.Parent.roblox_packages.conversation_types);

type Conversation = IConversation.Conversation;

export type ConstructorClientSettings = {

  general: {

    -- This is the default theme that will be used when talking with NPCs
    theme: ModuleScript;

    shouldEndConversationOnCharacterRemoval: boolean?;

  };
  responses: {

    -- Replace this with an audio ID that'll play every time a player selects a response. Replace with 0 to not play any sound.
    clickSound: number?;

  }?;
  keybinds: {

    --[[
      Keyboard keybind to start a conversation with a character.
    ]]
    interactKey: Enum.KeyCode?;

    --[[
      Gamepad keybind to start a conversation with a character.
    ]]
    interactKeyGamepad: Enum.KeyCode?;

  }?;

}

export type ClientSettings = {

  general: {

    -- This is the default theme that will be used when talking with NPCs
    theme: ModuleScript;

    shouldEndConversationOnCharacterRemoval: boolean;

  };
  responses: {

    -- Replace this with an audio ID that'll play every time a player selects a response. Replace with 0 to not play any sound.
    clickSound: number?;

  };
  keybinds: {

    --[[
      Keyboard keybind to start a conversation with a character.
    ]]
    interactKey: Enum.KeyCode?;

    --[[
      Gamepad keybind to start a conversation with a character.
    ]]
    interactKeyGamepad: Enum.KeyCode?;

  };
};

export type OptionalClientSettings = {

  general: {

    -- This is the default theme that will be used when talking with NPCs
    theme: ModuleScript?;

    shouldEndConversationOnCharacterRemoval: boolean?;

  }?;
  responses: {

    -- Replace this with an audio ID that'll play every time a player selects a response. Replace with 0 to not play any sound.
    clickSound: number?;

  }?;
  keybinds: {

    --[[
      Keyboard keybind to start a conversation with a character.
    ]]
    interactKey: Enum.KeyCode?;

    --[[
      Gamepad keybind to start a conversation with a character.
    ]]
    interactKeyGamepad: Enum.KeyCode?;

  }?;
};

export type ClientMethods = {
  freezePlayer: (self: Client) -> ();
  unfreezePlayer: (self: Client) -> ();
  interact: (self: Client, conversation: Conversation) -> ();
  getSettings: (self: Client) -> ClientSettings;
  setSettings: (self: Client, newSettings: ClientSettings) -> ();
  getConversation: (self: Client) -> Conversation?;
  setConversation: (self: Client, newConversation: Conversation?) -> ();
}

export type ClientEvents = {
  SettingsChanged: RBXScriptSignal<ClientSettings>;
  ConversationChanged: RBXScriptSignal;
}

export type Client = ClientMethods & ClientEvents;

return {};