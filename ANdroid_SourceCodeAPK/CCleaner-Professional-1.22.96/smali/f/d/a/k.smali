.class public final Lf/d/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/k$a;
    }
.end annotation

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
.field final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lf/d/a/k;->a:[Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 24
    check-cast p1, Lf/i;

    .line 1032
    new-instance v0, Lf/d/a/k$a;

    iget-object v1, p0, Lf/d/a/k;->a:[Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lf/d/a/k$a;-><init>(Lf/i;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lf/i;->a(Lf/f;)V

    .line 24
    return-void
.end method
