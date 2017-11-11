.class final Lcom/b/a/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/b;


# direct methods
.method constructor <init>(Lcom/b/a/a/b;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/b/a/a/b$2;->a:Lcom/b/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b$2;->a:Lcom/b/a/a/b;

    iget-object v0, v0, Lcom/b/a/a/b;->g:Lcom/b/a/a/r;

    .line 88
    iget-object v1, p0, Lcom/b/a/a/b$2;->a:Lcom/b/a/a/b;

    new-instance v2, Lcom/b/a/a/h;

    invoke-direct {v2}, Lcom/b/a/a/h;-><init>()V

    iput-object v2, v1, Lcom/b/a/a/b;->g:Lcom/b/a/a/r;

    .line 89
    invoke-interface {v0}, Lcom/b/a/a/r;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Failed to disable events"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
