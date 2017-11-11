.class final Lcom/piriform/ccleaner/rooted/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/rooted/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/rooted/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/rooted/e;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/rooted/e;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/piriform/ccleaner/rooted/e$1;->a:Lcom/piriform/ccleaner/rooted/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/rooted/l;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/e$1;->a:Lcom/piriform/ccleaner/rooted/e;

    .line 1011
    iget-object v0, v0, Lcom/piriform/ccleaner/rooted/e;->a:Ljava/util/Queue;

    .line 40
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/e$1;->a:Lcom/piriform/ccleaner/rooted/e;

    .line 2011
    iget-object v0, v0, Lcom/piriform/ccleaner/rooted/e;->b:Lcom/piriform/ccleaner/appmanager/k;

    .line 41
    invoke-interface {v0}, Lcom/piriform/ccleaner/appmanager/k;->g()V

    .line 43
    :cond_0
    return-void
.end method
