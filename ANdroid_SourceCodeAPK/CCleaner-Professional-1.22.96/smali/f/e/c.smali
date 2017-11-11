.class public abstract Lf/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/e/c$a;,
        Lf/e/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$a",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;Lf/e;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lf/e",
            "<-TT;>;)TS;"
        }
    .end annotation
.end method

.method public final a(Lf/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p0}, Lf/e/c;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    new-instance v1, Lf/e/c$a;

    invoke-direct {v1, p1, p0, v0}, Lf/e/c$a;-><init>(Lf/i;Lf/e/c;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1, v1}, Lf/i;->a(Lf/j;)V

    .line 62
    invoke-virtual {p1, v1}, Lf/i;->a(Lf/f;)V

    .line 63
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-static {v0}, Lf/b/b;->a(Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {p1, v0}, Lf/i;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 109
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lf/i;

    invoke-virtual {p0, p1}, Lf/e/c;->a(Lf/i;)V

    return-void
.end method
