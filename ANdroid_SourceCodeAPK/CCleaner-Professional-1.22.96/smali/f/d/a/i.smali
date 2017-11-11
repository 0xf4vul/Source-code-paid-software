.class public final Lf/d/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/i$a;
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
.field private final a:Lf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Lf/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/d;Lf/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d",
            "<TT;>;",
            "Lf/e",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lf/d/a/i;->b:Lf/d;

    .line 36
    iput-object p2, p0, Lf/d/a/i;->a:Lf/e;

    .line 37
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 30
    check-cast p1, Lf/i;

    .line 1041
    iget-object v0, p0, Lf/d/a/i;->b:Lf/d;

    new-instance v1, Lf/d/a/i$a;

    iget-object v2, p0, Lf/d/a/i;->a:Lf/e;

    invoke-direct {v1, p1, v2}, Lf/d/a/i$a;-><init>(Lf/i;Lf/e;)V

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/i;)Lf/j;

    .line 30
    return-void
.end method
