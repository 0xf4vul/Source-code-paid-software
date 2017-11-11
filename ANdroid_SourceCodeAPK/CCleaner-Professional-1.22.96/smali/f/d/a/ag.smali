.class public final Lf/d/a/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/ag$a;,
        Lf/d/a/ag$b;,
        Lf/d/a/ag$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d$b",
        "<TR;[",
        "Lf/d",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:Lf/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/g",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/c/f;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lf/c/h;->a(Lf/c/f;)Lf/c/g;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/ag;->a:Lf/c/g;

    .line 59
    return-void
.end method

.method private a(Lf/i;)Lf/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TR;>;)",
            "Lf/i",
            "<-[",
            "Lf/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lf/d/a/ag$a;

    iget-object v1, p0, Lf/d/a/ag;->a:Lf/c/g;

    invoke-direct {v0, p1, v1}, Lf/d/a/ag$a;-><init>(Lf/i;Lf/c/g;)V

    .line 100
    new-instance v1, Lf/d/a/ag$b;

    invoke-direct {v1, v0}, Lf/d/a/ag$b;-><init>(Lf/d/a/ag$a;)V

    .line 101
    new-instance v2, Lf/d/a/ag$c;

    invoke-direct {v2, p0, p1, v0, v1}, Lf/d/a/ag$c;-><init>(Lf/d/a/ag;Lf/i;Lf/d/a/ag$a;Lf/d/a/ag$b;)V

    .line 103
    invoke-virtual {p1, v2}, Lf/i;->a(Lf/j;)V

    .line 104
    invoke-virtual {p1, v1}, Lf/i;->a(Lf/f;)V

    .line 106
    return-object v2
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lf/i;

    invoke-direct {p0, p1}, Lf/d/a/ag;->a(Lf/i;)Lf/i;

    move-result-object v0

    return-object v0
.end method
