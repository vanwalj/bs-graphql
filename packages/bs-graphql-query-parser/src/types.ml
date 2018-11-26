type operation_type = Query | Mutation | Subscription

type field = {name: string}

type selection = Field of field

type operation = {typ: operation_type}

type definition = Operation of operation

type document = definition list
