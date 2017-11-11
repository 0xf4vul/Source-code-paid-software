.class final Lf/d/c/h$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lf/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Lf/d/c/h;

.field final b:Lf/j/b;


# direct methods
.method public constructor <init>(Lf/d/c/h;Lf/j/b;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 159
    iput-object p1, p0, Lf/d/c/h$b;->a:Lf/d/c/h;

    .line 160
    iput-object p2, p0, Lf/d/c/h$b;->b:Lf/j/b;

    .line 161
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lf/d/c/h$b;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lf/d/c/h$b;->b:Lf/j/b;

    iget-object v1, p0, Lf/d/c/h$b;->a:Lf/d/c/h;

    invoke-virtual {v0, v1}, Lf/j/b;->b(Lf/j;)V

    .line 173
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lf/d/c/h$b;->a:Lf/d/c/h;

    .line 1073
    iget-object v0, v0, Lf/d/c/h;->a:Lf/d/e/l;

    .line 2059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 165
    return v0
.end method
