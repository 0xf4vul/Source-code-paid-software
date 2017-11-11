.class public final Lf/d/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lf/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/d",
            "<+",
            "Lf/d",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/c/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/d",
            "<+",
            "Lf/d",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lf/d/a/h;->a:Lf/c/d;

    .line 40
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 35
    check-cast p1, Lf/i;

    .line 1046
    :try_start_0
    iget-object v0, p0, Lf/d/a/h;->a:Lf/c/d;

    invoke-interface {v0}, Lf/c/d;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    invoke-static {p1}, Lf/f/d;->a(Lf/i;)Lf/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/i;)Lf/j;

    .line 1049
    :goto_0
    return-void

    .line 1048
    :catch_0
    move-exception v0

    invoke-static {v0, p1}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;)V

    goto :goto_0
.end method
