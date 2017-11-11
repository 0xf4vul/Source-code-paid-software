.class final Lf/d/a/ag$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lf/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lf/f;"
    }
.end annotation


# instance fields
.field final a:Lf/d/a/ag$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/ag$a",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/d/a/ag$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/ag$a",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 156
    iput-object p1, p0, Lf/d/a/ag$b;->a:Lf/d/a/ag$a;

    .line 157
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 161
    invoke-static {p0, p1, p2}, Lf/d/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 163
    iget-object v0, p0, Lf/d/a/ag$b;->a:Lf/d/a/ag$a;

    invoke-virtual {v0}, Lf/d/a/ag$a;->a()V

    .line 164
    return-void
.end method
