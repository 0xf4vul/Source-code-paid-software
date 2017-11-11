.class public final Lf/d/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$b",
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private a(Lf/i;)Lf/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;)",
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lf/d/a/w$1;

    invoke-direct {v0, p0, p1}, Lf/d/a/w$1;-><init>(Lf/d/a/w;Lf/i;)V

    .line 56
    invoke-virtual {p1, v0}, Lf/i;->a(Lf/j;)V

    .line 57
    return-object v0
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lf/i;

    invoke-direct {p0, p1}, Lf/d/a/w;->a(Lf/i;)Lf/i;

    move-result-object v0

    return-object v0
.end method
