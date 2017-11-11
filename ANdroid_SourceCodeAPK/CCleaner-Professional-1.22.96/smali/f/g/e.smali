.class final Lf/g/e;
.super Lf/g/d;
.source "SourceFile"


# static fields
.field private static final a:Lf/g/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lf/g/e;

    invoke-direct {v0}, Lf/g/e;-><init>()V

    sput-object v0, Lf/g/e;->a:Lf/g/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lf/g/d;-><init>()V

    .line 28
    return-void
.end method

.method public static a()Lf/g/d;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lf/g/e;->a:Lf/g/e;

    return-object v0
.end method
