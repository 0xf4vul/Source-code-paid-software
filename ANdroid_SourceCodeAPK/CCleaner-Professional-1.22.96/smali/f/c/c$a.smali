.class final Lf/c/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lf/c/a;


# direct methods
.method public constructor <init>(Lf/c/a;)V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object p1, p0, Lf/c/c$a;->a:Lf/c/a;

    .line 562
    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lf/c/c$a;->a:Lf/c/a;

    invoke-interface {v0}, Lf/c/a;->a()V

    .line 567
    return-void
.end method
