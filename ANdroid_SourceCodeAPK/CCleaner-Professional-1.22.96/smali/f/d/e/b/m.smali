.class abstract Lf/d/e/b/m;
.super Lf/d/e/b/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d/e/b/k",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final f:J


# instance fields
.field volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lf/d/e/b/m;

    const-string/jumbo v1, "producerIndex"

    invoke-static {v0, v1}, Lf/d/e/b/ak;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lf/d/e/b/m;->f:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lf/d/e/b/k;-><init>(I)V

    .line 39
    return-void
.end method
