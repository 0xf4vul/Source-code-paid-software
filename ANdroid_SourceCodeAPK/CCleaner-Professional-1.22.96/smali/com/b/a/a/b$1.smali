.class final Lcom/b/a/a/b$1;
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
.field final synthetic a:Lc/a/a/a/a/g/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/b/a/a/b;


# direct methods
.method constructor <init>(Lcom/b/a/a/b;Lc/a/a/a/a/g/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/b/a/a/b$1;->c:Lcom/b/a/a/b;

    iput-object p2, p0, Lcom/b/a/a/b$1;->a:Lc/a/a/a/a/g/b;

    iput-object p3, p0, Lcom/b/a/a/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b$1;->c:Lcom/b/a/a/b;

    iget-object v0, v0, Lcom/b/a/a/b;->g:Lcom/b/a/a/r;

    iget-object v1, p0, Lcom/b/a/a/b$1;->a:Lc/a/a/a/a/g/b;

    iget-object v2, p0, Lcom/b/a/a/b$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/b/a/a/r;->a(Lc/a/a/a/a/g/b;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Failed to set analytics settings data"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
