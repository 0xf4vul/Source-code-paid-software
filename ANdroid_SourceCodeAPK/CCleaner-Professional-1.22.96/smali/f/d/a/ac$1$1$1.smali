.class final Lf/d/a/ac$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/a/ac$1$1;->a(Lf/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/f;

.field final synthetic b:Lf/d/a/ac$1$1;


# direct methods
.method constructor <init>(Lf/d/a/ac$1$1;Lf/f;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lf/d/a/ac$1$1$1;->b:Lf/d/a/ac$1$1;

    iput-object p2, p0, Lf/d/a/ac$1$1$1;->a:Lf/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lf/d/a/ac$1$1$1;->b:Lf/d/a/ac$1$1;

    iget-object v0, v0, Lf/d/a/ac$1$1;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lf/d/a/ac$1$1$1;->a:Lf/f;

    invoke-interface {v0, p1, p2}, Lf/f;->a(J)V

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lf/d/a/ac$1$1$1;->b:Lf/d/a/ac$1$1;

    iget-object v0, v0, Lf/d/a/ac$1$1;->c:Lf/d/a/ac$1;

    iget-object v0, v0, Lf/d/a/ac$1;->b:Lf/g$a;

    new-instance v1, Lf/d/a/ac$1$1$1$1;

    invoke-direct {v1, p0, p1, p2}, Lf/d/a/ac$1$1$1$1;-><init>(Lf/d/a/ac$1$1$1;J)V

    invoke-virtual {v0, v1}, Lf/g$a;->a(Lf/c/a;)Lf/j;

    goto :goto_0
.end method
