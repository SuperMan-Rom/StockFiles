.class Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter$1;
.super Ljava/lang/Object;
.source "ExternalizableConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter;

.field final synthetic val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

.field final synthetic val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Objects are not allowed to call ObjectOutput.close() from writeExternal()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public defaultWriteObject()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    .line 101
    return-void
.end method

.method public writeFieldsToStream(Ljava/util/Map;)V
    .locals 1
    .param p1, "fields"    # Ljava/util/Map;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public writeToStream(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    const-string v1, "null"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter;

    # getter for: Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;
    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter;->access$000(Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 86
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_0
.end method
