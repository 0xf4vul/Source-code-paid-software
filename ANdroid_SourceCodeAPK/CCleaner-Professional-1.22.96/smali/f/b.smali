.class public final Lf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/b$b;,
        Lf/b$a;
    }
.end annotation


# static fields
.field static final a:Lf/b;

.field static final b:Lf/b;


# instance fields
.field private final c:Lf/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lf/b;

    new-instance v1, Lf/b$1;

    invoke-direct {v1}, Lf/b$1;-><init>()V

    invoke-direct {v0, v1}, Lf/b;-><init>(Lf/b$a;)V

    sput-object v0, Lf/b;->a:Lf/b;

    .line 99
    new-instance v0, Lf/b;

    new-instance v1, Lf/b$2;

    invoke-direct {v1}, Lf/b$2;-><init>()V

    invoke-direct {v0, v1}, Lf/b;-><init>(Lf/b$a;)V

    sput-object v0, Lf/b;->b:Lf/b;

    return-void
.end method

.method private constructor <init>(Lf/b$a;)V
    .locals 0

    .prologue
    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    iput-object p1, p0, Lf/b;->c:Lf/b$a;

    .line 996
    return-void
.end method
