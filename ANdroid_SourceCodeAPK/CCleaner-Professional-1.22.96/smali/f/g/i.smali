.class final Lf/g/i;
.super Lf/g/h;
.source "SourceFile"


# static fields
.field private static final a:Lf/g/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lf/g/i;

    invoke-direct {v0}, Lf/g/i;-><init>()V

    sput-object v0, Lf/g/i;->a:Lf/g/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lf/g/h;-><init>()V

    .line 29
    return-void
.end method

.method public static a()Lf/g/h;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lf/g/i;->a:Lf/g/i;

    return-object v0
.end method
