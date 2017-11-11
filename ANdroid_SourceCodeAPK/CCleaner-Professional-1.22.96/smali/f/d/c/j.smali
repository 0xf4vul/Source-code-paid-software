.class public final Lf/d/c/j;
.super Lf/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/c/j$b;,
        Lf/d/c/j$a;
    }
.end annotation


# static fields
.field public static final b:Lf/d/c/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lf/d/c/j;

    invoke-direct {v0}, Lf/d/c/j;-><init>()V

    sput-object v0, Lf/d/c/j;->b:Lf/d/c/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lf/g;-><init>()V

    .line 41
    return-void
.end method

.method static a(II)I
    .locals 1

    .prologue
    .line 125
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lf/g$a;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lf/d/c/j$a;

    invoke-direct {v0}, Lf/d/c/j$a;-><init>()V

    return-object v0
.end method
