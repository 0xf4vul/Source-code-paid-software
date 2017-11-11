.class final Lf/d/a/ac$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/i;

.field final synthetic b:Lf/g$a;

.field final synthetic c:Lf/d/a/ac;


# direct methods
.method constructor <init>(Lf/d/a/ac;Lf/i;Lf/g$a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lf/d/a/ac$1;->c:Lf/d/a/ac;

    iput-object p2, p0, Lf/d/a/ac$1;->a:Lf/i;

    iput-object p3, p0, Lf/d/a/ac$1;->b:Lf/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 50
    new-instance v1, Lf/d/a/ac$1$1;

    iget-object v2, p0, Lf/d/a/ac$1;->a:Lf/i;

    invoke-direct {v1, p0, v2, v0}, Lf/d/a/ac$1$1;-><init>(Lf/d/a/ac$1;Lf/i;Ljava/lang/Thread;)V

    .line 94
    iget-object v0, p0, Lf/d/a/ac$1;->c:Lf/d/a/ac;

    iget-object v0, v0, Lf/d/a/ac;->b:Lf/d;

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/i;)Lf/j;

    .line 95
    return-void
.end method
