.class public final Lf/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/c/c$a;,
        Lf/c/c$b;
    }
.end annotation


# static fields
.field private static final a:Lf/c/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lf/c/c$b;

    invoke-direct {v0}, Lf/c/c$b;-><init>()V

    sput-object v0, Lf/c/c;->a:Lf/c/c$b;

    return-void
.end method

.method public static a(Lf/c/a;)Lf/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/c/a;",
            ")",
            "Lf/c/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 554
    new-instance v0, Lf/c/c$a;

    invoke-direct {v0, p0}, Lf/c/c$a;-><init>(Lf/c/a;)V

    return-object v0
.end method

.method public static a()Lf/c/c$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            ">()",
            "Lf/c/c$b",
            "<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lf/c/c;->a:Lf/c/c$b;

    return-object v0
.end method
