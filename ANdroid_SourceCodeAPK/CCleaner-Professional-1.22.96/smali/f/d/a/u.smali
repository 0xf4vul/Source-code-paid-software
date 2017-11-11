.class public final Lf/d/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$b;


# annotations
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


# instance fields
.field private final a:Lf/c/a;


# direct methods
.method public constructor <init>(Lf/c/a;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lf/d/a/u;->a:Lf/c/a;

    .line 36
    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lf/i;

    .line 1040
    iget-object v0, p0, Lf/d/a/u;->a:Lf/c/a;

    invoke-interface {v0}, Lf/c/a;->a()V

    .line 1043
    invoke-static {p1}, Lf/f/d;->a(Lf/i;)Lf/i;

    move-result-object v0

    .line 27
    return-object v0
.end method
