.class public final Lf/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/j;


# instance fields
.field public final a:Lf/d/d/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lf/d/d/a;

    invoke-direct {v0}, Lf/d/d/a;-><init>()V

    iput-object v0, p0, Lf/j/c;->a:Lf/d/d/a;

    return-void
.end method


# virtual methods
.method public final a(Lf/j;)V
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lf/j/c;->a:Lf/d/d/a;

    .line 1071
    :cond_0
    invoke-virtual {v1}, Lf/d/d/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/j;

    .line 1073
    sget-object v2, Lf/d/d/b;->a:Lf/d/d/b;

    if-ne v0, v2, :cond_2

    .line 1075
    invoke-interface {p1}, Lf/j;->b()V

    .line 1084
    :cond_1
    :goto_0
    return-void

    .line 1080
    :cond_2
    invoke-virtual {v1, v0, p1}, Lf/d/d/a;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1081
    if-eqz v0, :cond_1

    .line 1082
    invoke-interface {v0}, Lf/j;->b()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lf/j/c;->a:Lf/d/d/a;

    invoke-virtual {v0}, Lf/d/d/a;->b()V

    .line 37
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lf/j/c;->a:Lf/d/d/a;

    invoke-virtual {v0}, Lf/d/d/a;->c()Z

    move-result v0

    return v0
.end method
