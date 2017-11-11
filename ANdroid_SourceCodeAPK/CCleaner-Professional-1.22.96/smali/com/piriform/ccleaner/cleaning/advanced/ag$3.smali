.class final Lcom/piriform/ccleaner/cleaning/advanced/ag$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/ag;->clearLogs(Ljava/util/List;)Lf/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/piriform/ccleaner/cleaning/advanced/ag;

.field final synthetic val$logs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/ag;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$3;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$3;->val$logs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag$3;->val$logs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/ag$3;->call(Ljava/lang/Boolean;)V

    return-void
.end method
