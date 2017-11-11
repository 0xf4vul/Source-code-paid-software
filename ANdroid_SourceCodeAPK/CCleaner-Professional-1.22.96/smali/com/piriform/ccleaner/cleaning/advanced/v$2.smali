.class final Lcom/piriform/ccleaner/cleaning/advanced/v$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/v;->insertLogsByUserId(Ljava/util/List;Ljava/lang/String;Lcom/piriform/ccleaner/cleaning/advanced/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/piriform/ccleaner/cleaning/advanced/v;

.field final synthetic val$failureListener:Lcom/piriform/ccleaner/cleaning/advanced/u;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/v;Lcom/piriform/ccleaner/cleaning/advanced/u;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/v$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/v;

    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/v$2;->val$failureListener:Lcom/piriform/ccleaner/cleaning/advanced/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/v$2;->val$failureListener:Lcom/piriform/ccleaner/cleaning/advanced/u;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/u;->onFailure(Ljava/lang/Exception;)V

    .line 96
    return-void
.end method
