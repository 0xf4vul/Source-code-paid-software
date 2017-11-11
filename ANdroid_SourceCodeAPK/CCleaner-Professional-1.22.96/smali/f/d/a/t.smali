.class public final Lf/d/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/f;
.implements Lf/d$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/c/f",
        "<TU;TU;",
        "Ljava/lang/Boolean;",
        ">;",
        "Lf/d$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lf/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/e",
            "<-TT;+TU;>;"
        }
    .end annotation
.end field

.field final b:Lf/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c/f",
            "<-TU;-TU;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/c/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c/f",
            "<-TU;-TU;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    new-instance v0, Lf/d/e/n$1;

    invoke-direct {v0}, Lf/d/e/n$1;-><init>()V

    .line 59
    iput-object v0, p0, Lf/d/a/t;->a:Lf/c/e;

    .line 60
    iput-object p1, p0, Lf/d/a/t;->b:Lf/c/f;

    .line 61
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    .line 2065
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 29
    return-object v0

    .line 2065
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lf/i;

    .line 1070
    new-instance v0, Lf/d/a/t$1;

    invoke-direct {v0, p0, p1, p1}, Lf/d/a/t$1;-><init>(Lf/d/a/t;Lf/i;Lf/i;)V

    .line 29
    return-object v0
.end method
