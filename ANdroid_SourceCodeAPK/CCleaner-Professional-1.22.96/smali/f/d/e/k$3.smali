.class final Lf/d/e/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/e/k;->d(Lf/c/e;)Lf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf/c/e;

.field final synthetic b:Lf/d/e/k;


# direct methods
.method constructor <init>(Lf/d/e/k;Lf/c/e;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lf/d/e/k$3;->b:Lf/d/e/k;

    iput-object p2, p0, Lf/d/e/k$3;->a:Lf/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 228
    check-cast p1, Lf/i;

    .line 1231
    iget-object v0, p0, Lf/d/e/k$3;->a:Lf/c/e;

    iget-object v1, p0, Lf/d/e/k$3;->b:Lf/d/e/k;

    iget-object v1, v1, Lf/d/e/k;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lf/c/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d;

    .line 1232
    instance-of v1, v0, Lf/d/e/k;

    if-eqz v1, :cond_0

    .line 1233
    check-cast v0, Lf/d/e/k;

    iget-object v0, v0, Lf/d/e/k;->b:Ljava/lang/Object;

    invoke-static {p1, v0}, Lf/d/e/k;->a(Lf/i;Ljava/lang/Object;)Lf/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/i;->a(Lf/f;)V

    :goto_0
    return-void

    .line 1235
    :cond_0
    invoke-static {p1}, Lf/f/d;->a(Lf/i;)Lf/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/i;)Lf/j;

    goto :goto_0
.end method
