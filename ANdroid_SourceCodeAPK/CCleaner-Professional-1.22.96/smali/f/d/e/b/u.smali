.class abstract Lf/d/e/b/u;
.super Lf/d/e/b/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lf/d/e/b/q",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final e:J


# instance fields
.field volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lf/d/e/b/u;

    const-string/jumbo v1, "producerIndex"

    invoke-static {v0, v1}, Lf/d/e/b/ak;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lf/d/e/b/u;->e:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lf/d/e/b/q;-><init>(I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected final d(J)V
    .locals 7

    .prologue
    .line 42
    sget-object v0, Lf/d/e/b/ak;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lf/d/e/b/u;->e:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 43
    return-void
.end method
