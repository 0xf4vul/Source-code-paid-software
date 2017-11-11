.class final Lcom/piriform/ccleaner/b/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/f",
        "<",
        "Lcom/piriform/ccleaner/b/b/b;",
        "Lcom/piriform/ccleaner/b/b/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/b/b/c;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/b/b/c;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/piriform/ccleaner/b/b/c$1;->a:Lcom/piriform/ccleaner/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 28
    check-cast p1, Lcom/piriform/ccleaner/b/b/b;

    check-cast p2, Lcom/piriform/ccleaner/b/b/b;

    .line 1032
    invoke-interface {p1}, Lcom/piriform/ccleaner/b/b/b;->b()Z

    move-result v0

    invoke-interface {p2}, Lcom/piriform/ccleaner/b/b/b;->b()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1033
    invoke-interface {p1}, Lcom/piriform/ccleaner/b/b/b;->c()Z

    move-result v0

    invoke-interface {p2}, Lcom/piriform/ccleaner/b/b/b;->c()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1034
    invoke-interface {p1}, Lcom/piriform/ccleaner/b/b/b;->a()Z

    move-result v0

    invoke-interface {p2}, Lcom/piriform/ccleaner/b/b/b;->a()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1031
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 28
    return-object v0

    .line 1034
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
